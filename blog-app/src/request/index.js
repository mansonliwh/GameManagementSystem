import axios from 'axios'
import {Message} from 'element-ui'
import store from '@/store'
import {getToken} from '@/request/token'

const service = axios.create({
  baseURL: process.env.BASE_API,
  timeout: 10000
})

service.interceptors.request.use(config => {

  if (store.state.token) {
    config.headers['Oauth-Token'] = getToken()
  }
  return config
}, error => {

  Promise.reject(error)
})

service.interceptors.response.use(
  response => {

    if (response.headers['session_time_out'] == 'timeout') {
      store.dispatch('fedLogOut')
    }

    const res = response.data;

    if (res.code !== 0) {

      if (res.code === 90001) {
        return Promise.reject('error');
      }

      if (res.code === 20001) {
        console.info("user do not login")

        Message({
          type: 'warning',
          showClose: true,
          message: 'please re login'
        })

        return Promise.reject('error');
      }

      if (res.code === 70001) {
        console.info("permission fail")
        Message({
          type: 'warning',
          showClose: true,
          message: 'no permission'
        })
        return Promise.reject('error');
      }

      return Promise.reject(res.msg);
    } else {
      return response.data;
    }
  },
  error => {
    Message({
      type: 'warning',
      showClose: true,
      message: 'runtime error'
    })
    return Promise.reject('error')
  })

export default service

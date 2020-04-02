package com.shimh.vo;

import com.shimh.entity.Game;
import com.shimh.entity.Gametag;

public class GametagVO extends Gametag {


    private static final long serialVersionUID = -5012077957959870694L;

    private int games;
    public int getGames() {
        return games;
    }
    public void setGames(int games) {
        this.games = games;
    }
}

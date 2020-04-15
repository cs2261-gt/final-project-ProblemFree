#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"

// Variables
CHARACTER enemyChar;
int turn;

// Control Functions
void initCombat(CHARACTER * enemy) {
    enemyChar = *enemy;
    turn = 0;
}

void updateCombat() {
    // Check if combat is won, handle defeating boss
    if (enemyChar.hpCurr == 0) {
        if (dungeon[currRoom].adjective == BOSS) {
            goToWin();
        }
        else {
            if (dungeon[currRoom].adjective == GUARDED) {
                dungeon[currRoom].adjective = TREASURE;
            } else {
                dungeon[currRoom].adjective = EMPTY;
            }
            turnCount++;
            goToGame();
        }
    } else {


        // Check if player has died, handle revival items
        checkDeath();

        // Handle player turn
        if (turn == 0) {
            if (BUTTON_HELD(BUTTON_A)) {
                player.stance = OFFENSE;
                attack(&player, &enemyChar);
                turn = 1;
            } else if (BUTTON_HELD(BUTTON_B)) {
                player.stance = DEFENSE;
                turn = 1;
            } else if (BUTTON_HELD(BUTTON_START)) {
                goToCombatPause();
            } else if (BUTTON_HELD(BUTTON_L) && dungeon[currRoom].adjective != BOSS) {
                currRoom--;
                goToGame();
            }
        } 

        // Handle enemy turn
        else if (turn == 1) {
            int enemydecider = rand() % 100;

            switch (enemyChar.enemyid)
            {
            case BEHOLDER:
                if (enemyChar.hpCurr > enemyChar.hpMax / 5) {
                    if (enemydecider < 20) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {

                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 50) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case DRAGON:
                if (enemyChar.hpCurr > enemyChar.hpMax / 4) {
                    if (enemydecider < 20) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 40) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case WIZARD:
                if (enemyChar.hpCurr > enemyChar.hpMax / 3) {
                    if (enemydecider < 40) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 60) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case MINDFLAYER:
                if (enemyChar.hpCurr > enemyChar.hpMax / 5) {
                    if (enemydecider < 30) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 75) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            default:
                if (enemyChar.hpCurr > enemyChar.hpMax / 4) {
                    if (enemydecider < 30) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 60) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            }
        }
    }
}

void drawCombat() {

}

// Handle all possible attack combos (player to mob, boss to player, dragon boss to player, and moc to player), give players and bosses advantage
void attack(CHARACTER * source, CHARACTER  * target) {
    // Handle player to mob attacks
    if (source->playerclass == MAGE) {
        if ((rand() % 20) + 1 + statMod(source, INTEL) >= target->ac + target->stance) {
            int damage = rollDmg(10, statMod(source, INTEL));
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    } else if (source->playerclass == ROGUE) {
        if ((rand() % 20) + 1 + statMod(source, DEX) >= target->ac + target->stance) {
            int damage = rollDmg(10, statMod(source, DEX));
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    } else if (source->playerclass == FIGHTER) {
        if ((rand() % 20) + 1 + statMod(source, STR) >= target->ac + target->stance) {
            int damage = rollDmg(10, statMod(source, STR));
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    } 
    // Handle Boss attacks
    else if (source->enemyid == BEHOLDER || source->enemyid == DRAGON || source->enemyid == WIZARD || source->enemyid == MINDFLAYER) {
        if (((rand() % 20) + 1 + 2) >= statEquipped(target, AC) + target->stance)  {
            int damage = rollDmg(source->dmg, 2);
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    } else if (source->enemyid == DRAGON) {
        if (((rand() % 20) + 1 + 5) >= statEquipped(target, AC) + target->stance) {
            int damage = rollDmg(source->dmg, 5);
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    }
    // Handle general mob attacks
    else {
        if (((rand() % 20) + 1 + 0) >= statEquipped(target, AC) + target->stance) {
            int damage = rollDmg(source->dmg, 0);
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        }
    }
}

int rollDmg(int dice, int bonus) {
    return ((rand() % dice) + 1 + bonus);
}

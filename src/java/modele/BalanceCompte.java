/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author Jo Max
 */
public class BalanceCompte {
          
          double debitMvt;
          double creditMvt;
          double debitSolde;
          double creditSolde;

    public double getDebitMvt() {
        return debitMvt;
    }

    public void setDebitMvt(double debitMvt) {
        this.debitMvt = debitMvt;
    }

    public double getCreditMvt() {
        return creditMvt;
    }

    public void setCreditMvt(double creditMvt) {
        this.creditMvt = creditMvt;
    }



    public double getDebitSolde() {
        
        return debitSolde;
    }

    public void setDebitSolde(double debitSolde) {
        this.debitSolde = debitSolde;
    }

    public double getCreditSolde() {
        return creditSolde;
    }

    public void setCreditSolde(double creditSolde) {
        this.creditSolde = creditSolde;
    }
          
    
}

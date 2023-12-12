package ru.cosmosway.web02.beans;

import java.beans.JavaBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
@JavaBean
public class Table implements Serializable {
    private static final long serialVersionUID = 1L;

    private List<RowCheckout> table = new ArrayList<>();

    public Table() {
        this.table = new ArrayList<RowCheckout>();
    }

    public Table(List<RowCheckout> table) {
        this.table = table;
    }
    public void addRow(RowCheckout row){
        table.add(row);
    }

    public List<RowCheckout> getTable() {
        return table;
    }
}

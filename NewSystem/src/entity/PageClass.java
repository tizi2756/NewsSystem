package entity;

public class PageClass {
    private int pageNow;
    private int pageCount;
    private int rowsCount;
    private int pageSize;
    public PageClass(int pageNow, int pageCount, int rowsCount, int pageSize){
        this.pageNow=pageNow;
        this.pageCount=pageCount;
        this.rowsCount=rowsCount;
        this.pageSize=pageSize;
    }
    public PageClass(int pageSize, int rows){
        this.setPageSize(pageSize);
        this.setRowsCount(rows);
        if (this.getRowsCount()%this.getPageSize()==0){
            this.setPageCount(this.getRowsCount()/this.getPageSize());
        }
        else if (rows<this.getPageSize()){
            this.pageCount=1;
        }
        else {
            this.setPageCount(this.getRowsCount()/this.getPageSize()+1);
        }
    }

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getRowsCount() {
        return rowsCount;
    }

    public void setRowsCount(int rowsCount) {
        this.rowsCount = rowsCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}

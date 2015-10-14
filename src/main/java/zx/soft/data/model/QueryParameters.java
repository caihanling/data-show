package zx.soft.data.model;

public class QueryParameters {

	private int operator;//用0,1,2代表大于，小于，等于
	private String field;
	private String value;

	public int getOperator() {
		return operator;
	}

	public String getField() {
		return field;
	}

	public String getValue() {
		return value;
	}

	public void setOperator(int operator) {
		this.operator = operator;
	}

	public void setField(String field) {
		this.field = field;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "QueryParameters [operator=" + operator + ", field=" + field + ", value=" + value + "]";
	}

}
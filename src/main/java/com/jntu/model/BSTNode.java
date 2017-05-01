package com.jntu.model;

public class BSTNode {

	private int data;
	
	private BSTNode leftNode;
	
	private BSTNode rightNode;
	
	// Height of left sub tree minus height of right sub tree
	private int balance;
	
	public BSTNode(int data) {
		this.data = data;
		this.balance = 0;
		this.leftNode = null;
		this.rightNode = null;
	}
	
	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}

	public BSTNode getLeftNode() {
		return leftNode;
	}

	public void setLeftNode(BSTNode leftNode) {
		this.leftNode = leftNode;
	}

	public BSTNode getRightNode() {
		return rightNode;
	}

	public void setRightNode(BSTNode rightNode) {
		this.rightNode = rightNode;
	}

	public static int[] toArray(BSTNode node, int i, int[] arrayForm) {
		if(node == null)
			return arrayForm;
		if(i >= arrayForm.length)
			return arrayForm;
		arrayForm[i] = node.data;
		toArray(node.leftNode, 2 * i + 1, arrayForm);
		toArray(node.rightNode, 2 * i + 2, arrayForm);
		return arrayForm;
	}

	public void updateBalance() {
		int leftSubTreeHeight = getHeight(this.leftNode);
		int rightSubTreeHeight = getHeight(this.rightNode);
		this.balance = leftSubTreeHeight - rightSubTreeHeight;
	}

	private int getHeight(BSTNode node) {
		if(node == null)
			return 0;
		else {
			int leftSubTreeHeight = getHeight(node.leftNode);
			int rightSubTreeHeight = getHeight(node.rightNode);
			return 1 + max(leftSubTreeHeight,rightSubTreeHeight);
		}
	}
	
	private static int max(int a, int b) {
		return a > b ? a : b;
	}
	
}

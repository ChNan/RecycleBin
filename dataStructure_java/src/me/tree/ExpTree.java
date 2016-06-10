package me.tree;

import me.list.MyStack;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class ExpTree {
    private MyStack<BinaryNode<Character>> stack;
    private char[] expression;
    private static final char[] operater = {'+', '-', '*', '/'};

    public ExpTree(String exp) {
        expression = exp.toCharArray();
    }

    public boolean isOperator(char ch) {
        for (int i = 0; i < operater.length; i++) {
            if (ch == operater[i]) return true;
        }
        return false;
    }

    public BinaryNode<Character> formPostOrderTree() {
        BinaryNode<Character> root = null;
        stack = new MyStack<BinaryNode<Character>>();
        for (int i = 0; i < expression.length; i++) {
            if ( expression[i] == ' ') continue;
            if ( !isOperator( expression[i] ) ) 
                stack.push( 
                    new BinaryNode<Character>( expression[i] ) );
            else {
                root = new BinaryNode<Character>( expression[i] );
                root.right = stack.pop();
                root.left = stack.pop();
                stack.push( root );
            }
        }
        return root;
    }

    public void printPostOrderTree() {
        BinaryNode<Character> root = formPostOrderTree();
        postOrderPrint(root);
    }

    private void postOrderPrint( BinaryNode<Character> tree ) {
        if ( tree == null ) return;
        postOrderPrint(tree.left);
        postOrderPrint(tree.right);
        System.out.println(tree.element);
    }

    private void preOrderPrint( BinaryNode<Character> tree ) {
        if ( tree == null ) return;
        System.out.println(tree.element);
        preOrderPrint(tree.left);
        preOrderPrint(tree.right);
    }

    private void inOrderPrint( BinaryNode<Character> tree ) {
        if ( tree == null ) return;
        inOrderPrint(tree.left);
        System.out.println(tree.element);
        inOrderPrint(tree.right);
    }

    private class BinaryNode<T> {
        T element;
        BinaryNode<T> left;
        BinaryNode<T> right;

        public BinaryNode(T element) {
            this.element = element;
            left = null;
            right = null;
        }

        public BinaryNode(T element, BinaryNode<T> left, BinaryNode<T> right) {
            this.element = element;
            this.left = left;
            this.right = right;
        }
    }
}
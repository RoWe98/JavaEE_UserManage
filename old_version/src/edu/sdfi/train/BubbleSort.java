package edu.sdfi.train;

public class BubbleSort {
	public int newArray[] = new int[] {};
	public void sort(int array[]) {
		for(int i = 1;i<array.length;i++) {
			for(int j =0;j<array.length-i;j++) {
				if(array[j]>array[j+1]) {
					int temp = array[j];
					array[j] = array[j+1];
					array[j+1] = temp;
				}
			}
		}
		showArray(array);
	}
	
	public void showArray(int array[]) {
		for(int i:array) {
			System.out.print(">"+i);
			System.out.println();
		}
		/*
		for(int i = 1;i<array.length;i++) {
			for(int j:array) {
				newArray[i] = j;
			}
		}
		*/
		System.out.println();
	}
}
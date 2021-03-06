/* Binary Insertion sort is a special type up of Insertion sort which uses binary search algorithm to find out the correct position 
   of the inserted element in the array. */


void insertionSort(List ar)
{
	if (ar == null || ar.length == 0)
	{
		return;
	}
	int n = ar.length;
	int temp, i, j;
	for (i = 1; i < n; i++)
	{
		temp = ar[i];
		j = i - 1;
		while (j >= 0 && temp < ar[j])
		{
			ar[j+1] = ar[j];
			--j;
		}
		ar[j+1] = temp;
	}
}

int binarySearch(List ar, int key, int start, int end)
{
    if (end-start <= 1)
    {
        if (key < ar[start])
        {
            return start - 1;
        }
		else
		{
			return start;
		}
	}
	int mid = (start + end) ~/ 2;
	if (ar[mid] < key)
	{
		return binarySearch(ar, key, mid, end);
	}
	else if (ar[mid] > key)
	{
		return binarySearch(ar, key, start, mid);
	}
	else
	{
		return mid;
	}
}

main()
{
	List ar = [1, 5, 3, 4, 8, 6];
	int n = ar.length;
	insertionSort(ar);
	print("Sorted Array: ");
	for (int i = 0;i < n; i++)
	{
		print(ar[i]);
	}
}

/* OUTPUT:
   Sorted Array is: [1, 3, 4, 5, 6, 8] */
   


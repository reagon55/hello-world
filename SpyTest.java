package com.in28minutes.business;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.spy;
import static org.mockito.Mockito.stub;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
//A Spy gets all logic from the class.
public class SpyTest {

	@Test
	public void testwithMock() {
	List arrayListMock = mock(ArrayList.class);
	//Mock returns default value
	//A Mock does not get any business logic 
	//from actual class it is mocking
	assertEquals(0,arrayListMock.size());
	arrayListMock.add("Dummy");
	stub(arrayListMock.size()).toReturn(5);
	assertEquals(5,arrayListMock.size());
	
	}
	
	@Test
	public void testWithSpy(){
		List arrayListSpy = spy(ArrayList.class);
		assertEquals(0,arrayListSpy.size());
		arrayListSpy.add("Dummy");
		arrayListSpy.add("Yummy");
		arrayListSpy.add("Groovy");
		assertEquals(3,arrayListSpy.size());
		arrayListSpy.remove("Yummy");
		arrayListSpy.remove("Dummy");
		assertEquals(1,arrayListSpy.size());
	}
	
	@Test
	public void testWithSpy2(){
		List arrayListSpy = spy(ArrayList.class);
		stub(arrayListSpy.size()).toReturn(5);
		//From now on size of the arrayList will be 5.
	}

}

package com.daian.ex;

import java.lang.ref.WeakReference;

/**
 * @author daixiangtao
 * @description
 * @date 2018/11/3 下午2:30
 */
public class MainThreadL {
    public static void main(String[] args)throws Exception {
        ThreadLocal<Integer> ss = new ThreadLocal<>();

        ss.set(12);
        System.out.println(ss.get());
        ss.remove();

        System.out.println(ss.get());

        Car car = new Car(22000,"silver");
        WeakReference<Car> weakCar = new WeakReference<Car>(car);

        int i=0;

        while(true){
            System.out.println("here is the strong reference 'car' "+car);
            if(weakCar.get()!=null){
                i++;
                System.out.println("Object is alive for "+i+" loops - "+weakCar);
            }else{
                System.out.println("Object has been collected.");
                break;
            }

        }
    }
}

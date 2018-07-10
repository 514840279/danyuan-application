package tk.ainiyue.danyuan.application.common.utils.concurrent;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * 文件名 ： CachedThreadPoolUtils.java
 * 包 名 ： org.eastone.utils.timetask.executor
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月22日 上午10:21:41
 * 版 本 ： V1.0
 */
public class ThreadPoolUtils {
	
	public static ExecutorService			cachedThreadPool	= null;
	public static ScheduledExecutorService	scheduledThreadPool	= null;
	
	/**
	 * newCachedThreadPool创建一个可缓存线程池，如果线程池长度超过处理需要，可灵活回收空闲线程，若无可回收，则新建线程。
	 * 方法名： getCachedThreadPool
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： ExecutorService
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static ExecutorService getCachedThreadPool() {
		return cachedThreadPool = Executors.newCachedThreadPool();
		
	}
	
	/**
	 * 创建一个定长线程池，可控制线程最大并发数，超出的线程会在队列中等待。
	 * 方法名： getCachedThreadPool
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： ExecutorService
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static ExecutorService getFixedThreadPool(int threadnum) {
		return cachedThreadPool = Executors.newFixedThreadPool(threadnum);
		
	}
	
	/**
	 * 创建一个定长线程池，支持定时及周期性任务执行。
	 * 方法名： getCachedThreadPool
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： ScheduledExecutorService
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static ScheduledExecutorService getScheduledThreadPool(int threadnum) {
		return scheduledThreadPool = Executors.newScheduledThreadPool(threadnum);
		
	}
	
	/**
	 * 创建一个单线程化的线程池，它只会用唯一的工作线程来执行任务，保证所有任务按照指定顺序(FIFO, LIFO, 优先级)执行。
	 * 方法名： getCachedThreadPool
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： ScheduledExecutorService
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static ExecutorService getSingleThreadExecutor() {
		return cachedThreadPool = Executors.newSingleThreadExecutor();
	}
	
	/**
	 * 计划任务线程池
	 * 方法名： excuteScheduled
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param obj
	 * 参 数： @param key
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static void excuteScheduled(ScheduledExecutorService scheduledThreadPool, final String obj, final String method, final String key) {
		scheduledThreadPool.scheduleAtFixedRate(new Runnable() {
			@Override
			public void run() {
				Class<? extends Object> clazz;
				try {
					clazz = Class.forName(obj);
					Method met = clazz.getDeclaredMethod(method, String.class);
					met.invoke(clazz.newInstance(), key);
				} catch (ClassNotFoundException e1) {
					System.out.println("没有找到该类" + e1.toString());
				} catch (NoSuchMethodException e) {
					System.out.println("没有找到该方法" + e.toString());
				} catch (SecurityException e) {
					System.out.println("没有找到该方法系统异常" + e.toString());
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (InstantiationException e) {
					e.printStackTrace();
				}
			}
		}, 0, 1, TimeUnit.SECONDS);
		
	}
	
	/**
	 * 执行线程
	 * 方法名： excuteThreadPool
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param obj
	 * 参 数： @param key
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static void excuteThreadPool(ExecutorService cachedThreadPool, final String obj, final String method, final String key) {
		cachedThreadPool.execute(new Runnable() {
			@Override
			public void run() {
				Class<? extends Object> clazz;
				try {
					clazz = Class.forName(obj);
					Method met = clazz.getDeclaredMethod(method, String.class);
					met.invoke(clazz.newInstance(), key);
				} catch (ClassNotFoundException e1) {
					System.out.println("没有找到该类" + e1.toString());
				} catch (NoSuchMethodException e) {
					System.out.println("没有找到该方法" + e.toString());
				} catch (SecurityException e) {
					System.out.println("没有找到该方法系统异常" + e.toString());
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (InstantiationException e) {
					e.printStackTrace();
				}
			}
		});
		
	}
}

package org.mvel2.integration;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GlobalListenerFactory {
    private static List<Listener> propertyGetListeners;
    private static List<Listener> propertySetListeners;

    public static boolean hasGetListeners() {
        List<Listener> list = propertyGetListeners;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean hasSetListeners() {
        List<Listener> list = propertySetListeners;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean registerGetListener(Listener listener) {
        if (propertyGetListeners == null) {
            propertyGetListeners = new LinkedList();
        }
        return propertyGetListeners.add(listener);
    }

    public static boolean registerSetListener(Listener listener) {
        if (propertySetListeners == null) {
            propertySetListeners = new LinkedList();
        }
        return propertySetListeners.add(listener);
    }

    public static void notifyGetListeners(Object obj, String str, VariableResolverFactory variableResolverFactory) {
        List<Listener> list = propertyGetListeners;
        if (list != null) {
            Iterator<Listener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onEvent(obj, str, variableResolverFactory, null);
            }
        }
    }

    public static void notifySetListeners(Object obj, String str, VariableResolverFactory variableResolverFactory, Object obj2) {
        List<Listener> list = propertySetListeners;
        if (list != null) {
            Iterator<Listener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onEvent(obj, str, variableResolverFactory, obj2);
            }
        }
    }

    public static void disposeAll() {
        propertyGetListeners = null;
        propertySetListeners = null;
    }
}

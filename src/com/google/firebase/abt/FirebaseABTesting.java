package com.google.firebase.abt;

import android.content.Context;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseABTesting {
    private final Provider analyticsConnector;
    private Integer maxUserProperties = null;
    private final String originService;

    public FirebaseABTesting(Context context, Provider provider, String str) {
        this.analyticsConnector = provider;
        this.originService = str;
    }

    public void replaceAllExperiments(List list) throws AbtException {
        throwAbtExceptionIfAnalyticsIsNull();
        if (list == null) {
            throw new IllegalArgumentException("The replacementExperiments list is null.");
        }
        replaceAllExperimentsWith(convertMapsToExperimentInfos(list));
    }

    public void removeAllExperiments() throws AbtException {
        throwAbtExceptionIfAnalyticsIsNull();
        removeExperiments(getAllExperimentsInAnalytics());
    }

    public List getAllExperiments() throws AbtException {
        throwAbtExceptionIfAnalyticsIsNull();
        List allExperimentsInAnalytics = getAllExperimentsInAnalytics();
        ArrayList arrayList = new ArrayList();
        Iterator it = allExperimentsInAnalytics.iterator();
        while (it.hasNext()) {
            arrayList.add(AbtExperimentInfo.fromConditionalUserProperty((AnalyticsConnector.ConditionalUserProperty) it.next()));
        }
        return arrayList;
    }

    private void replaceAllExperimentsWith(List list) throws AbtException {
        if (list.isEmpty()) {
            removeAllExperiments();
            return;
        }
        List allExperiments = getAllExperiments();
        removeExperiments(getExperimentsToRemove(allExperiments, list));
        addExperiments(getExperimentsToAdd(list, allExperiments));
    }

    private ArrayList getExperimentsToRemove(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbtExperimentInfo abtExperimentInfo = (AbtExperimentInfo) it.next();
            if (!experimentsListContainsExperiment(list2, abtExperimentInfo)) {
                arrayList.add(abtExperimentInfo.toConditionalUserProperty(this.originService));
            }
        }
        return arrayList;
    }

    private ArrayList getExperimentsToAdd(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbtExperimentInfo abtExperimentInfo = (AbtExperimentInfo) it.next();
            if (!experimentsListContainsExperiment(list2, abtExperimentInfo)) {
                arrayList.add(abtExperimentInfo);
            }
        }
        return arrayList;
    }

    private boolean experimentsListContainsExperiment(List list, AbtExperimentInfo abtExperimentInfo) {
        String experimentId = abtExperimentInfo.getExperimentId();
        String variantId = abtExperimentInfo.getVariantId();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbtExperimentInfo abtExperimentInfo2 = (AbtExperimentInfo) it.next();
            if (abtExperimentInfo2.getExperimentId().equals(experimentId) && abtExperimentInfo2.getVariantId().equals(variantId)) {
                return true;
            }
        }
        return false;
    }

    private void addExperiments(List list) {
        ArrayDeque arrayDeque = new ArrayDeque(getAllExperimentsInAnalytics());
        int maxUserPropertiesInAnalytics = getMaxUserPropertiesInAnalytics();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbtExperimentInfo abtExperimentInfo = (AbtExperimentInfo) it.next();
            while (arrayDeque.size() >= maxUserPropertiesInAnalytics) {
                removeExperimentFromAnalytics(((AnalyticsConnector.ConditionalUserProperty) arrayDeque.pollFirst()).name);
            }
            AnalyticsConnector.ConditionalUserProperty conditionalUserProperty = abtExperimentInfo.toConditionalUserProperty(this.originService);
            addExperimentToAnalytics(conditionalUserProperty);
            arrayDeque.offer(conditionalUserProperty);
        }
    }

    private void removeExperiments(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            removeExperimentFromAnalytics(((AnalyticsConnector.ConditionalUserProperty) it.next()).name);
        }
    }

    private static List convertMapsToExperimentInfos(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(AbtExperimentInfo.fromMap((Map) it.next()));
        }
        return arrayList;
    }

    private void addExperimentToAnalytics(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        ((AnalyticsConnector) this.analyticsConnector.get()).setConditionalUserProperty(conditionalUserProperty);
    }

    private void throwAbtExceptionIfAnalyticsIsNull() throws AbtException {
        if (this.analyticsConnector.get() == null) {
            throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }

    private void removeExperimentFromAnalytics(String str) {
        ((AnalyticsConnector) this.analyticsConnector.get()).clearConditionalUserProperty(str, null, null);
    }

    private int getMaxUserPropertiesInAnalytics() {
        if (this.maxUserProperties == null) {
            this.maxUserProperties = Integer.valueOf(((AnalyticsConnector) this.analyticsConnector.get()).getMaxUserProperties(this.originService));
        }
        return this.maxUserProperties.intValue();
    }

    private List getAllExperimentsInAnalytics() {
        return ((AnalyticsConnector) this.analyticsConnector.get()).getConditionalUserProperties(this.originService, _UrlKt.FRAGMENT_ENCODE_SET);
    }
}

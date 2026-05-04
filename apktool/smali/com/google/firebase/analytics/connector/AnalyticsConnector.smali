.class public interface abstract Lcom/google/firebase/analytics/connector/AnalyticsConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;,
        Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;,
        Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    }
.end annotation


# virtual methods
.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;)I
.end method

.method public abstract getUserProperties(Z)Ljava/util/Map;
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
.end method

.method public abstract setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

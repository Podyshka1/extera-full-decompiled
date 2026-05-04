.class public interface abstract Lcom/google/firebase/components/ComponentContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;
.end method

.method public abstract get(Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract getDeferred(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Deferred;
.end method

.method public abstract getDeferred(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;
.end method

.method public abstract getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
.end method

.method public abstract getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
.end method

.method public abstract setOf(Lcom/google/firebase/components/Qualified;)Ljava/util/Set;
.end method

.method public abstract setOf(Ljava/lang/Class;)Ljava/util/Set;
.end method

.method public abstract setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
.end method

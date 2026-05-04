.class public interface abstract Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchAdapterHelperDelegate"
.end annotation


# virtual methods
.method public abstract canApplySearchResults(I)Z
.end method

.method public abstract getExcludeCallParticipants()Landroidx/collection/LongSparseArray;
.end method

.method public abstract getExcludeUsers()Landroidx/collection/LongSparseArray;
.end method

.method public abstract onDataSetChanged(I)V
.end method

.method public abstract onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
.end method

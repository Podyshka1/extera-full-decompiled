.class public interface abstract Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogsActivityDelegate"
.end annotation


# virtual methods
.method public abstract canSelectStories()Z
.end method

.method public abstract didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
.end method

.method public abstract didSelectStories(Lorg/telegram/ui/DialogsActivity;)Z
.end method

.class public final synthetic Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/preferences/components/AltSeekbar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    return-void
.end method


# virtual methods
.method public synthetic getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getContentDescription(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStepsCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getStepsCount(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic needVisuallyDivideSteps()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$needVisuallyDivideSteps(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public final onSeekBarDrag(ZF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    invoke-static {v0, p1, p2}, Lcom/exteragram/messenger/preferences/components/AltSeekbar;->$r8$lambda$j2X4XMsyry42i-ZoHV0eGGUDdS0(Lcom/exteragram/messenger/preferences/components/AltSeekbar;ZF)V

    return-void
.end method

.method public synthetic onSeekBarPressed(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$onSeekBarPressed(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;Z)V

    return-void
.end method

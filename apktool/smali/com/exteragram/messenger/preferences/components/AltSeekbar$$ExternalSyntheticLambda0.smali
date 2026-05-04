.class public final synthetic Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/preferences/components/AltSeekbar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/google/android/material/slider/Slider;FZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/AltSeekbar$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    invoke-static {v0, p1, p2, p3}, Lcom/exteragram/messenger/preferences/components/AltSeekbar;->$r8$lambda$FReRN_ZEZiaAoianWFiV6EpT-iU(Lcom/exteragram/messenger/preferences/components/AltSeekbar;Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

.method public bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/slider/Slider$OnChangeListener$-CC;->$default$onValueChange(Lcom/google/android/material/slider/Slider$OnChangeListener;Ljava/lang/Object;FZ)V

    return-void
.end method

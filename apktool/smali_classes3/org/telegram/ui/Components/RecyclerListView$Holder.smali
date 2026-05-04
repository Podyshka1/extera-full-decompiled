.class public Lorg/telegram/ui/Components/RecyclerListView$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 520
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 522
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_0

    .line 523
    invoke-static {p1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

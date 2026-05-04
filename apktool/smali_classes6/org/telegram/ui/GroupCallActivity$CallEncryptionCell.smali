.class public final Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallEncryptionCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;
    }
.end annotation


# instance fields
.field private final drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;


# direct methods
.method public static synthetic $r8$lambda$zHQcLhDJUMh64K-m-ZaK6_TzlSA(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->lambda$new$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdrawable(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;)Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;)V
    .locals 0

    .line 10136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10137
    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    .line 10138
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 10141
    new-instance p2, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 10144
    new-instance p2, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;)V

    invoke-virtual {p2}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->show()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 10173
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10174
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->draw(Landroid/graphics/Canvas;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10175
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 10150
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 10151
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    if-eqz v0, :cond_0

    .line 10152
    invoke-virtual {v0, p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 10158
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 10159
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->drawable:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    if-eqz v0, :cond_0

    .line 10160
    invoke-virtual {v0, p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->resetParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 10166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42180000    # 38.0f

    .line 10167
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 10168
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

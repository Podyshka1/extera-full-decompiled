.class Lorg/telegram/ui/DataAutoDownloadActivity$3;
.super Lorg/telegram/ui/Cells/MaxFileSizeCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataAutoDownloadActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

.field final synthetic val$animatorSet:[Landroid/animation/AnimatorSet;

.field final synthetic val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

.field final synthetic val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/content/Context;ILorg/telegram/ui/Cells/TextInfoPrivacyCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    iput p3, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$position:I

    iput-object p4, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object p5, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    iput-object p6, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/MaxFileSizeCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected didChangedSizeValue(I)V
    .locals 6

    .line 390
    iget v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$position:I

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->-$$Nest$fgetvideosRow(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadVideoInfo:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "AutoDownloadPreloadVideoInfo"

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x200000

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    .line 393
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq v3, p1, :cond_2

    .line 394
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$checkCell:[Lorg/telegram/ui/Cells/TextCheckCell;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, v5

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    aput-object v1, v0, v5

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v1, v0, v5

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, v5

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v5

    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataAutoDownloadActivity$3$1;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v5

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$3;->val$animatorSet:[Landroid/animation/AnimatorSet;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

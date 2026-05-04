.class public Lorg/telegram/ui/Components/TopViewCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastIconResId:I

.field private maxWidth:I

.field public final textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public static synthetic $r8$lambda$2fCTsEN68e_P1M0EoT3rF0V5igE(Lorg/telegram/ui/Components/TopViewCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopViewCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmaxWidth(Lorg/telegram/ui/Components/TopViewCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TopViewCell;->maxWidth:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 33
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 34
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 35
    new-instance v2, Lorg/telegram/ui/Components/TopViewCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/TopViewCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopViewCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x0

    const/16 v9, 0x9

    const/16 v3, 0x5a

    const/16 v4, 0x5a

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v7, 0x9

    .line 38
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Lorg/telegram/ui/Components/TopViewCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopViewCell$1;-><init>(Lorg/telegram/ui/Components/TopViewCell;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p1, 0x41600000    # 14.0f

    .line 50
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    .line 51
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x4

    .line 52
    invoke-virtual {v1, p1}, Landroid/view/View;->setTextAlignment(I)V

    .line 53
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v7, 0x30

    const/16 v8, 0x11

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/16 v5, 0x30

    .line 55
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setEmoji(I)V
    .locals 5

    .line 65
    iget v0, p0, Lorg/telegram/ui/Components/TopViewCell;->lastIconResId:I

    if-eq v0, p1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    iput p1, p0, Lorg/telegram/ui/Components/TopViewCell;->lastIconResId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, p1, v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    :cond_0
    return-void
.end method

.method public setEmoji(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 60
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v2, "90_90"

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImage(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmojiStatic(I)V
    .locals 1

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/TopViewCell;->lastIconResId:I

    if-eq v0, p1, :cond_0

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput p1, p0, Lorg/telegram/ui/Components/TopViewCell;->lastIconResId:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopViewCell;->maxWidth:I

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/TopViewCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

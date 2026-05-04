.class Lorg/telegram/ui/Components/AudioPlayerAlert$8;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$8;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iput-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$8;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 3

    .line 592
    new-instance v0, Lorg/telegram/ui/Components/MarqueeTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$8;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$8;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    .line 594
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 595
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 596
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 597
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v0
.end method

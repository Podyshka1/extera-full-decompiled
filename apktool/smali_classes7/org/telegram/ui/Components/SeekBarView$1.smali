.class Lorg/telegram/ui/Components/SeekBarView$1;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SeekBarView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SeekBarView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView$1;->this$0:Lorg/telegram/ui/Components/SeekBarView;

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 5

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/MarqueeTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MarqueeTextView;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView$1;->this$0:Lorg/telegram/ui/Components/SeekBarView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SeekBarView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SeekBarView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

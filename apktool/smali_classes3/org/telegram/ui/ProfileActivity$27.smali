.class Lorg/telegram/ui/ProfileActivity$27;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 5893
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 3

    .line 5896
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5897
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 5898
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    .line 5899
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5900
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x3

    .line 5901
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

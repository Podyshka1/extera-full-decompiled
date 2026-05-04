.class Lorg/telegram/ui/Components/FragmentContextView$5;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$5;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    iput-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView$5;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 3

    .line 470
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$5;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 472
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 474
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v2, 0x3

    .line 475
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 477
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$5;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/FragmentContextView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected animateByScale(Landroid/view/View;)F
    .locals 0

    .line 788
    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

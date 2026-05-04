.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

.field final synthetic val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;FLorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 5315
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;->val$this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>(F)V

    const/high16 p1, 0x40e00000    # 7.0f

    .line 5317
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 2

    .line 5322
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method

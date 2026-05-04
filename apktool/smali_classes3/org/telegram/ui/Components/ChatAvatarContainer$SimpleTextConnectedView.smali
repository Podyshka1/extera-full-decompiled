.class Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTextConnectedView"
.end annotation


# instance fields
.field private reference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 144
    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 145
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

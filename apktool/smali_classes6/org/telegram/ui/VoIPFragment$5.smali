.class Lorg/telegram/ui/VoIPFragment$5;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$5;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 986
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    .line 988
    iget-object p2, p1, Lorg/telegram/ui/VoIPFragment$5;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p2}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$mupdateViewState(Lorg/telegram/ui/VoIPFragment;)V

    :cond_0
    return-void
.end method

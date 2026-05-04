.class Lorg/telegram/ui/Business/BusinessIntroActivity$1;
.super Lorg/telegram/ui/Components/ChatGreetingsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/BusinessIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity$1;->this$0:Lorg/telegram/ui/Business/BusinessIntroActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ChatGreetingsView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->onMeasure(II)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.class Lorg/telegram/ui/Cells/TextDetailCell$1;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextDetailCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextDetailCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell$1;->this$0:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public overrideColor()I
    .locals 1

    .line 103
    invoke-super {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->overrideColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextDetailCell$1;->processColor(I)I

    move-result v0

    return v0
.end method

.method protected processColor(I)I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell$1;->this$0:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextDetailCell;->processColor(I)I

    move-result p1

    return p1
.end method

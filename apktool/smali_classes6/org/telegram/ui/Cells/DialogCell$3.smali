.class Lorg/telegram/ui/Cells/DialogCell$3;
.super Lorg/telegram/ui/Components/CheckBox2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogCell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3059
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 3062
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 3063
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$3;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

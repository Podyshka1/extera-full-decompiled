.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$7KKE5Usa_0QX3Ls8_4QAuVSOHaI(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

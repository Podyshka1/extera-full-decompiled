.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;->f$0:Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$p0ytIiutpJ3zaqvIeT7MOealMtQ(Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

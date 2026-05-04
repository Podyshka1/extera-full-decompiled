.class public final synthetic Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.class Lorg/telegram/ui/Components/TranslateAlert2$9;
.super Lorg/telegram/ui/Components/TranslateAlert2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranslateAlert2;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$InputPeer;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onDismiss:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 11

    move-object/from16 v0, p10

    .line 1706
    iput-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$9;->val$onDismiss:Ljava/lang/Runnable;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/TranslateAlert2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputPeer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/TranslateAlert2-IA;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1709
    invoke-super {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$9;->val$onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1711
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$10:Ljava/util/HashMap;

.field public final synthetic f$11:Ljava/util/HashSet;

.field public final synthetic f$12:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:Landroid/util/SparseArray;

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$4:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$6:Lorg/telegram/tgnet/TLObject;

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$7:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$8:Landroid/util/SparseArray;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$9:Ljava/util/ArrayList;

    iput-object p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$10:Ljava/util/HashMap;

    iput-object p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$11:Ljava/util/HashSet;

    iput-object p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$12:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$1:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$2:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$4:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$5:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$6:Lorg/telegram/tgnet/TLObject;

    iget-object v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$7:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$8:Landroid/util/SparseArray;

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$9:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$10:Ljava/util/HashMap;

    iget-object v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$11:Ljava/util/HashSet;

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda466;->f$12:Ljava/lang/Runnable;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$NuvWcTm6u3mBd7Cs7kbZKz6lz70(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

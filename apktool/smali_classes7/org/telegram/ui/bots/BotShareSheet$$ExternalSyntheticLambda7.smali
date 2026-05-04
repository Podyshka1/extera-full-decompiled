.class public final synthetic Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/bots/BotShareSheet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/bots/BotShareSheet;ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/bots/BotShareSheet;

    iput p2, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    iput-wide p4, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p7, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$5:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public synthetic canSelectStories()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate$-CC;->$default$canSelectStories(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/bots/BotShareSheet;

    iget v2, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$1:I

    iget-object v3, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    iget-wide v4, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$3:J

    iget-object v6, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;->f$5:Lorg/telegram/messenger/Utilities$Callback2;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-static/range {v1 .. v15}, Lorg/telegram/ui/bots/BotShareSheet;->$r8$lambda$Is5pu1d0o7VizSEFyuVK-hjhk00(Lorg/telegram/ui/bots/BotShareSheet;ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method

.method public synthetic didSelectStories(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate$-CC;->$default$didSelectStories(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    return p1
.end method

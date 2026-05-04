.class public final synthetic Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

.field public final synthetic f$5:[Ljava/io/File;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$7:Ljava/lang/Runnable;

.field public final synthetic f$8:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    iput-object p7, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$5:[Ljava/io/File;

    iput-object p8, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p9, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$7:Ljava/lang/Runnable;

    iput-object p10, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$8:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget v1, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    iget-object v6, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$5:[Ljava/io/File;

    iget-object v7, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v8, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$7:Ljava/lang/Runnable;

    iget-object v9, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;->f$8:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/bots/BotShareSheet;->$r8$lambda$lUTp97u8Hrsi9JSYuCe7stR8o5c(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

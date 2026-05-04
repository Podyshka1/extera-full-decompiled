.class public final synthetic Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$6:Ljava/lang/Runnable;

.field public final synthetic f$7:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$2:I

    iput-wide p4, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p8, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Runnable;

    iput-object p9, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$7:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget v2, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$2:I

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$3:J

    iget-object v5, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v7, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Runnable;

    iget-object v8, p0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;->f$7:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/bots/BotShareSheet;->$r8$lambda$EXaIjZzBQ7aMcNHqrlgv1i_xxj8(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

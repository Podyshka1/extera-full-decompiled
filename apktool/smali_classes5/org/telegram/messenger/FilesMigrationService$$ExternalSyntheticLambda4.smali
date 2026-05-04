.class public final synthetic Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FilesMigrationService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FilesMigrationService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/FilesMigrationService;

    iput p2, p0, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/FilesMigrationService;

    iget v1, p0, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService;->$r8$lambda$f_GcEhT2WGRWhAWWU9TEFpcm5JQ(Lorg/telegram/messenger/FilesMigrationService;I)V

    return-void
.end method

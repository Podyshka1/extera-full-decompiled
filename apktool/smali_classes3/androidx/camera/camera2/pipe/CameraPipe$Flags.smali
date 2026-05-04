.class public final Landroidx/camera/camera2/pipe/CameraPipe$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation


# instance fields
.field private final strictModeEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getStrictModeEnabled()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flags(strictModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

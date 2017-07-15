.class abstract Lcom/vungle/publisher/ald;
.super Lcom/vungle/publisher/alf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/alf",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/vungle/publisher/ald;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lcom/vungle/publisher/ali;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/publisher/ald;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/publisher/alf;-><init>(I)V

    .line 66
    return-void
.end method

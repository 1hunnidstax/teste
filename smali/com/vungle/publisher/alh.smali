.class abstract Lcom/vungle/publisher/alh;
.super Lcom/vungle/publisher/ale;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ale",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final f:J


# instance fields
.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/vungle/publisher/alh;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/vungle/publisher/ali;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/publisher/alh;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ale;-><init>(I)V

    .line 48
    return-void
.end method

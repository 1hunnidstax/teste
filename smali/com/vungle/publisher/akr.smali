.class abstract Lcom/vungle/publisher/akr;
.super Lcom/vungle/publisher/akp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/akp",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final f:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/vungle/publisher/akr;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/vungle/publisher/ali;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/publisher/akr;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vungle/publisher/akp;-><init>(I)V

    .line 39
    return-void
.end method

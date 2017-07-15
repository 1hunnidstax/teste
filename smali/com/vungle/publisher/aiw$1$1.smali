.class final Lcom/vungle/publisher/aiw$1$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/aho",
        "<*>;",
        "Lcom/vungle/publisher/aho",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aiw$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vungle/publisher/aiw$1$1;->a:Lcom/vungle/publisher/aiw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/vungle/publisher/aho;->a()Lcom/vungle/publisher/aho;

    move-result-object v0

    return-object v0
.end method

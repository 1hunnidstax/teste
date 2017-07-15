.class final Lcom/vungle/publisher/aiw$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<",
        "Lcom/vungle/publisher/aho",
        "<*>;",
        "Lcom/vungle/publisher/aho",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aiw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/vungle/publisher/aiw$3;->a:Lcom/vungle/publisher/aiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v0, Lcom/vungle/publisher/aiw$3$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/vungle/publisher/aiw$3$1;-><init>(Lcom/vungle/publisher/aiw$3;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahu;)V

    return-object v0
.end method

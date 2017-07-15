.class final Lcom/vungle/publisher/ajs$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/ajs$a;->a(Lcom/vungle/publisher/aie;J)Lcom/vungle/publisher/ahv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ajs$b;

.field final synthetic b:Lcom/vungle/publisher/ajs$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajs$a;Lcom/vungle/publisher/ajs$b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vungle/publisher/ajs$a$1;->b:Lcom/vungle/publisher/ajs$a;

    iput-object p2, p0, Lcom/vungle/publisher/ajs$a$1;->a:Lcom/vungle/publisher/ajs$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/ajs$a$1;->b:Lcom/vungle/publisher/ajs$a;

    iget-object v0, v0, Lcom/vungle/publisher/ajs$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lcom/vungle/publisher/ajs$a$1;->a:Lcom/vungle/publisher/ajs$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

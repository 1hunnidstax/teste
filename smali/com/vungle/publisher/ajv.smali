.class public final Lcom/vungle/publisher/ajv;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aif",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/vungle/publisher/aif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aif",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/vungle/publisher/aie;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aie;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aif",
            "<-TT;>;",
            "Lcom/vungle/publisher/aif",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/vungle/publisher/aie;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vungle/publisher/ajv;->a:Lcom/vungle/publisher/aif;

    .line 33
    iput-object p2, p0, Lcom/vungle/publisher/ajv;->b:Lcom/vungle/publisher/aif;

    .line 34
    iput-object p3, p0, Lcom/vungle/publisher/ajv;->c:Lcom/vungle/publisher/aie;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vungle/publisher/ajv;->c:Lcom/vungle/publisher/aie;

    invoke-interface {v0}, Lcom/vungle/publisher/aie;->d()V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/ajv;->a:Lcom/vungle/publisher/aif;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/aif;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/ajv;->b:Lcom/vungle/publisher/aif;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/aif;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

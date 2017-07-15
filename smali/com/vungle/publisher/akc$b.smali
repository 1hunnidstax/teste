.class final Lcom/vungle/publisher/akc$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/akc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<",
            "Lcom/vungle/publisher/aie;",
            "Lcom/vungle/publisher/ahv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/vungle/publisher/aii;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/vungle/publisher/aii",
            "<",
            "Lcom/vungle/publisher/aie;",
            "Lcom/vungle/publisher/ahv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/vungle/publisher/akc$b;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lcom/vungle/publisher/akc$b;->b:Lcom/vungle/publisher/aii;

    .line 155
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 148
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v0, Lcom/vungle/publisher/akc$c;

    iget-object v1, p0, Lcom/vungle/publisher/akc$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/publisher/akc$b;->b:Lcom/vungle/publisher/aii;

    invoke-direct {v0, p1, v1, v2}, Lcom/vungle/publisher/akc$c;-><init>(Lcom/vungle/publisher/ahu;Ljava/lang/Object;Lcom/vungle/publisher/aii;)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    return-void
.end method

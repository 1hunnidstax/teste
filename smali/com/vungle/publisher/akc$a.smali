.class final Lcom/vungle/publisher/akc$a;
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
    name = "a"
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/vungle/publisher/akc$a;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/akc$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahu;Ljava/lang/Object;)Lcom/vungle/publisher/ahr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    return-void
.end method

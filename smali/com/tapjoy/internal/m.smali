.class public final Lcom/tapjoy/internal/m;
.super Lcom/tapjoy/internal/o;
.source "SourceFile"


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/o;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    iput p3, p0, Lcom/tapjoy/internal/m;->c:I

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tapjoy/internal/m;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/internal/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/m;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/m;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/m;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tapjoy/internal/m;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.class public final synthetic LZ1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LZ1/g;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(LZ1/g;Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ1/c;->b:LZ1/g;

    iput-object p2, p0, LZ1/c;->c:Landroid/graphics/Rect;

    iput-object p3, p0, LZ1/c;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LZ1/c;->b:LZ1/g;

    iget-object v1, p0, LZ1/c;->c:Landroid/graphics/Rect;

    iget-object p0, p0, LZ1/c;->d:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, LZ1/g;->n(LZ1/g;Landroid/graphics/Rect;Landroid/content/Intent;)V

    return-void
.end method

.class public final synthetic Lcom/android/launcher3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/Launcher;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/B;->b:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/B;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/B;->b:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/B;->c:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/android/launcher3/Launcher;->k(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V

    return-void
.end method

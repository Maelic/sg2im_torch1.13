<<<<<<< HEAD
python scripts/train.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome --batch_size 32 --print_every 10000 --checkpoint_every 20000 --include_relationships 1 --image_size 128,128 --output_dir ./checkpoints --num_iterations 1000000


# samples
# custom curated
python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 36 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/vg_curated/checkpoint_with_model.pt --num_samples 50000 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/output/curated/outputs_val/

# original vg 128
python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 38 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/sg2im-models/vg128.pt --num_samples 50000 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/output/vg_original


# samples for curated
python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 1 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/vg_curated/checkpoint_with_model.pt --num_samples 10 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs_2/curated --save_graphs 1

# samples for baseline
python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 1 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/VG_orig/checkpoint_with_model.pt --num_samples 10 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs_2/baseline   --save_graphs 1

# inception score
python compute_inception_score.py --input_image_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/output/curated/images

# Inference

python scripts/run_model.py \
  --checkpoint /home/maelic/BACKUPS/day2/checkpoints_curated/checkpoint_with_model.pt \
  --scene_graphs scene_graphs/figure_6_sheep.json \
  --output_dir outputs/curated \
=======
python scripts/train.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 16 --print_every 10000 --checkpoint_every 20000 --include_relationships 1 --image_size 256,256 --output_dir ./checkpoints --num_iterations 500000

python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 1 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/VG_orig/checkpoint_with_model.pt --num_samples 10 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs_2/baseline   --save_graphs 1

python scripts/sample_images.py --dataset vg_curated --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 1 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/vg_curated/checkpoint_with_model.pt --num_samples 10 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs_2/curated --save_graphs 1


python -m pytorch_fid /home/maelic/sg2im_torch1.13/outputs/curated/images_gt /home/maelic/sg2im_torch1.13/outputs/curated/images
>>>>>>> 78b8ba4c8012723d7f9a27685728327cc9ac2c2e

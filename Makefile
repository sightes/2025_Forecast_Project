.PHONY: all clean

# Variables
PROJECT = 2025_Forecast_Project
LANGUAGE = Python

# Main rules
all: $(LANGUAGE)

clean:
	rm -rf $(PROJECT)
	@echo "Directory $(PROJECT) removed."

# Function to create day structure
define create_day_structure
    @echo "Creating structure for day $(1)..."
    mkdir -p "$(PROJECT)/$(1)"
    touch "$(PROJECT)/$(1)/README.md"
    touch "$(PROJECT)/$(1)/notebook.ipynb"
    touch "$(PROJECT)/$(1)/exercises.py"
    touch "$(PROJECT)/$(1)/solutions.py"
    @echo "Structure created for day $(1)"
endef

Python:
	mkdir -p $(PROJECT)/data $(PROJECT)/notebooks $(PROJECT)/exercises
	echo "# Python Forecasting Course" > $(PROJECT)/README.md
	echo "## Course Structure" >> $(PROJECT)/README.md
	echo "This course is designed to take you from beginner to expert in forecasting in 30 days." >> $(PROJECT)/README.md
	$(call create_day_structure,Day01_Introduction_to_Time_Series)
	$(call create_day_structure,Day02_Exploratory_Time_Series_Analysis)
	$(call create_day_structure,Day03_Time_Series_Decomposition)
	$(call create_day_structure,Day04_Evaluation_Metrics)
	$(call create_day_structure,Day05_Naive_Models)
	$(call create_day_structure,Day06_Moving_Averages)
	$(call create_day_structure,Day07_Simple_Exponential_Smoothing)
	$(call create_day_structure,Day08_Holt_Exponential_Smoothing)
	$(call create_day_structure,Day09_Winters_Exponential_Smoothing)
	$(call create_day_structure,Day10_ARIMA_Basic_Concepts)
	$(call create_day_structure,Day11_ARIMA_Model_Identification)
	$(call create_day_structure,Day12_ARIMA_Estimation_and_Diagnostics)
	$(call create_day_structure,Day13_SARIMA)
	$(call create_day_structure,Day14_Prophet_Introduction)
	$(call create_day_structure,Day15_Prophet_Components_and_Customization)
	$(call create_day_structure,Day16_Prophet_Advanced_Use_Cases)
	$(call create_day_structure,Day17_Neural_Networks_for_Time_Series)
	$(call create_day_structure,Day18_LSTM_for_Forecasting)
	$(call create_day_structure,Day19_GRU_for_Forecasting)
	$(call create_day_structure,Day20_Attention_Models_for_Time_Series)
	$(call create_day_structure,Day21_Ensemble_Methods)
	$(call create_day_structure,Day22_Cross_Validation_in_Time_Series)
	$(call create_day_structure,Day23_Advanced_Feature_Engineering)
	$(call create_day_structure,Day24_Handling_Missing_Data)
	$(call create_day_structure,Day25_Anomaly_Detection)
	$(call create_day_structure,Day26_Probabilistic_Forecasting)
	$(call create_day_structure,Day27_Hyperparameter_Optimization)
	$(call create_day_structure,Day28_Model_Deployment)
	$(call create_day_structure,Day29_Final_Project_Part_1)
	$(call create_day_structure,Day30_Final_Project_Part_2)

R:
	$(call create_structure,$(PROJECT),\
	    touch $(PROJECT)/main.R \
	    && mkdir -p $(PROJECT)/data $(PROJECT)/output $(PROJECT)/docs \
	    && echo "# $(PROJECT)" > $(PROJECT)/README.md \
	)

Scala:
	$(call create_structure,$(PROJECT)/src/main/scala,\
	    touch $(PROJECT)/src/main/scala/Main.scala \
	    && mkdir -p $(PROJECT)/src/test/scala $(PROJECT)/src/main/resources \
	    && echo "name := \"$(PROJECT)\"" > $(PROJECT)/build.sbt \
	    && echo "version := \"0.1.0\"" >> $(PROJECT)/build.sbt \
	    && echo "scalaVersion := \"2.13.12\"" >> $(PROJECT)/build.sbt \
	    && echo "object Main {" > $(PROJECT)/src/main/scala/Main.scala \
	    && echo "  def main(args: Array[String]): Unit = {" >> $(PROJECT)/src/main/scala/Main.scala \
	    && echo "    println(\"Hello, $(PROJECT)!\")" >> $(PROJECT)/src/main/scala/Main.scala \
	    && echo "  }" >> $(PROJECT)/src/main/scala/Main.scala \
	    && echo "}" >> $(PROJECT)/src/main/scala/Main.scala \
	)

Rust:
	$(call create_structure,$(PROJECT)/src,\
	    touch $(PROJECT)/src/main.rs \
	    && echo "[package]" > $(PROJECT)/Cargo.toml \
	    && echo "name = \"$(PROJECT)\"" >> $(PROJECT)/Cargo.toml \
	    && echo "version = \"0.1.0\"" >> $(PROJECT)/Cargo.toml \
	    && echo "edition = \"2021\"" >> $(PROJECT)/Cargo.toml \
	    && echo "fn main() {" > $(PROJECT)/src/main.rs \
	    && echo "    println!(\"Hello, $(PROJECT)!\");" >> $(PROJECT)/src/main.rs \
	    && echo "}" >> $(PROJECT)/src/main.rs \
	)

C++:
	$(call create_structure,$(PROJECT),\
	    touch $(PROJECT)/main.cpp \
	    && mkdir -p $(PROJECT)/include $(PROJECT)/src \
	    && echo "# $(PROJECT)" > $(PROJECT)/README.md \
	    && echo "#include <iostream>" > $(PROJECT)/main.cpp \
	    && echo "int main() {" >> $(PROJECT)/main.cpp \
	    && echo "    std::cout << \"Hello, $(PROJECT)!\" << std::endl;" >> $(PROJECT)/main.cpp \
	    && echo "    return 0;" >> $(PROJECT)/main.cpp \
	    && echo "}" >> $(PROJECT)/main.cpp \
	)

Java:
	$(call create_structure,$(PROJECT)/src/main/java,\
	    touch $(PROJECT)/src/main/java/Main.java \
	    && mkdir -p $(PROJECT)/src/test/java \
	    && echo "public class Main {" > $(PROJECT)/src/main/java/Main.java \
	    && echo "    public static void main(String[] args) {" >> $(PROJECT)/src/main/java/Main.java \
	    && echo "        System.out.println(\"Hello, $(PROJECT)!\");" >> $(PROJECT)/src/main/java/Main.java \
	    && echo "    }" >> $(PROJECT)/src/main/java/Main.java \
	    && echo "}" >> $(PROJECT)/src/main/java/Main.java \
	)

Javascript:
	$(call create_structure,$(PROJECT),\
	    touch $(PROJECT)/index.js \
	    && mkdir -p $(PROJECT)/tests \
	    && echo "# $(PROJECT)" > $(PROJECT)/README.md \
	    && echo "console.log('Hello, $(PROJECT)!');" > $(PROJECT)/index.js \
	)

SQL:
	$(call create_structure,$(PROJECT)/sql,\
	    touch $(PROJECT)/sql/query.sql \
	    && echo "-- SQL queries for $(PROJECT)" > $(PROJECT)/sql/query.sql \
	)

SPARK:
	$(call create_structure,$(PROJECT),\
	    touch $(PROJECT)/main.py \
	    && mkdir -p $(PROJECT)/data $(PROJECT)/output $(PROJECT)/notebooks \
	    && echo "# Spark Project $(PROJECT)" > $(PROJECT)/README.md \
	    && echo "from pyspark.sql import SparkSession" > $(PROJECT)/main.py \
	    && echo "spark = SparkSession.builder.appName('$(PROJECT)').getOrCreate()" >> $(PROJECT)/main.py \
	    && echo "print('Spark session created for $(PROJECT)')" >> $(PROJECT)/main.py \
	)

Perl:
	$(call create_structure,$(PROJECT),\
	    touch $(PROJECT)/main.pl \
	    && echo "#!/usr/bin/perl" > $(PROJECT)/main.pl \
	    && echo "use strict;" >> $(PROJECT)/main.pl \
	    && echo "use warnings;" >> $(PROJECT)/main.pl \
	    && echo "print \"Hello, $(PROJECT)!\\n\";" >> $(PROJECT)/main.pl \
	    && chmod +x $(PROJECT)/main.pl \
	)